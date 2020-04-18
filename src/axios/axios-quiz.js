import axios from 'axios'

export default axios.create({
  baseURL: 'https://react-quiz-6960d.firebaseio.com/'
})