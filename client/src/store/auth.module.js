import AuthService from "../services/auth.service"

const user = JSON.parse(localStorage.getItem('user'))
const initialState = user ? {status: { loggedIn: true }, user }
                        : {status: { loggedIn: false}, user: null }

export const auth = {
    namespaced: true,
    state: initialState,
    actions: {
        login({ commit }, user) {
            const user_info = user
            return AuthService.login(user).then(
                user => {
                    // user_info['token'] = user.token
                    user_info['password'] = ''
                    user_info["token"] = user.token
                    commit('loginSuccess', user_info)
                    return Promise.resolve(user)
                }).catch(e => {
                    commit('loginFailure')
                    return Promise.reject(e.response.data)})
        },
        logout({ commit }) {
            AuthService.logout()
            commit('logout')
        },
        register({ commit }, user) {
            return AuthService.register(user).then(
                res => {
                    commit('registerSuccess')
                    return Promise.resolve(res.data)
                }).catch(e => {
                    commit('registerFailure')
                    return Promise.reject(e)})
        }
    },
    mutations: {
        loginSuccess(state, user) {
            state.status.loggedIn = true
            state.user = user
        },
        loginFailure(state) {
            state.status.loggedIn = false
            state.user = null
        },
        logout(state) {
            state.status.loggedIn = false
            state.user = null
        },
        registerSuccess(state) {
            state.status.loggedIn = false
        },
        registerFailure(state) {
            state.status.loggedIn = false
        }
    }
}