/**

This file is part of PBSJavaDRMAA.

(C) June 2013 by Bryan J. Lunt <blunt@cs.ucsd.edu>

    PBSJavaDRMAA is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    PBSJavaDRMAA is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with PBSJavaDRMAA.  If not, see <http://www.gnu.org/licenses/>.
*/


%module jdrmaa

%include "typemaps.i"

#if defined(SWIGJAVA)
        %include "jdrmaa_typemaps_java.i"
#else
        #warning No SWIG typemaps for this target language!!!!
#endif

%{
#include "jdrmaa.hxx"
%}


/**
 *These are true regardless of the target language.
 */

%newobject DRMAA::get_contact;
%newobject JobTemplate::get_attribute;
%newobject DRMAAVector::next;

%include "jdrmaa.hxx"
%include "constants.h"
