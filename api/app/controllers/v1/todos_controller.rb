class V1::TodosController < ApplicationController
  # -------- ここから追記 --------
      # 表示テスト用のアクション
      def index
        todo = Todo.all
        render json: todo
      end
  
      def create
        puts params
      end
  
      def destroy
        todo = Todo.find(params[:id])
        if todo.destroy
          render json: todo
        end
      end
  
      private
  
      # ストロングパラメーターの設定
      def todo_params
        params.require(:todo).permit(:title, :user_id)
      end
  # -------- ここまで追記 --------
  end
  