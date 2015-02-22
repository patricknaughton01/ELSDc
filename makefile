#
#  Copyright (c) 2012 viorica patraucean (vpatrauc@gmail.com)
#  
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Affero General Public License as
#  published by the Free Software Foundation, either version 3 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU Affero General Public License for more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with this program. If not, see <http://www.gnu.org/licenses/>.
#
#  makefile - This file belongs to ELSDc project (Ellipse and Line Segment 
#             Detector with continuous validation).

STRICT= -fPIC -ansi -Wall -Wextra #-Werror
OPT= -O3
#CFLAGS=-I/home/viorik/Matlab/extern/include/

elsdc :	./src/main.c ./src/pgm.c ./src/svg.c ./src/elsdc.c ./src/gauss.c ./src/curve_grow.c ./src/polygon.c ./src/ring.c ./src/ellipse_fit.c ./src/rectangle.c ./src/iterator.c ./src/image.c ./src/lapack_wrapper.c ./src/misc.c 
	cc $(OPT) $(STRICT) -o elsdc ./src/main.c ./src/pgm.c ./src/svg.c ./src/elsdc.c ./src/gauss.c ./src/curve_grow.c ./src/polygon.c ./src/ring.c ./src/ellipse_fit.c ./src/rectangle.c ./src/iterator.c ./src/image.c ./src/lapack_wrapper.c ./src/misc.c -llapack -lm

clean : 
	rm elsdc

