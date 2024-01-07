<template>
  <div v-if="user">
    <p>名前：{{user.name}}</p>
    <AddTodo @submit="addTodo" />
    <TodoList :todos="todos" />
  </div>
</template>

<script>
import AddTodo from "@/components/AddTodo";
import TodoList from "@/components/TodoList";
import axios from "@/plugins/axios";

export default {
  components: {
    AddTodo,
    TodoList,
  },
  data() {
    return {
      todos: [],
    };
  },
  computed: {
    user() {
      return this.$store.state.auth.currentUser
    }
  },
  created() {
    console.log("API_KEY:", process.env.API_KEY);
  },
  methods: {
    async addTodo(title) { // async 非同期
      await axios.post("/v1/todos", { title }); // await 待つ
      this.todos.push({
        title,
      });
    },
  },
};
</script>

<style>
</style>
