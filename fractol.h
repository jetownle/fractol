/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fractol.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jetownle <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/25 04:47:22 by jetownle          #+#    #+#             */
/*   Updated: 2019/09/25 05:00:05 by jetownle         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FRACTOL_H

# define FRACTOL_H

# include "unistd.h"
# include "stdlib.h"
# include "stdio.h"
# include "fcntl.h"
# include "string.h"
# include "math.h"
# include "errno.h"
# include "libft/libft.h"
# include "minilibx_macos/mlx.h"

# define HEIGHT			1080
# define WIDTH			1920

typedef struct			s_fdf
{
	void				*mlx;
	void				*win;
	void				*img;
	char				*data_addr;
	int					bits_per_pixel;
	int					size_line;
	int					endian;
}						t_fdf;

#endif
