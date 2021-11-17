# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztelmoud <ztelmoud@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/02 14:16:30 by ztelmoud          #+#    #+#              #
#    Updated: 2021/11/02 14:24:05 by ztelmoud         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CLIENT= client
SERVER= server




all: $(SERVER) $(CLIENT)


fclean:
	rm -rf $(SERVER) $(CLIENT)

re: fclean $(SERVER) $(CLIENT)



$(CLIENT): 
	gcc  -Wall -Wextra -Werror client.c utils.c -o $(CLIENT)

$(SERVER):
	gcc  -Wall -Wextra -Werror server.c utils.c -o $(SERVER)
