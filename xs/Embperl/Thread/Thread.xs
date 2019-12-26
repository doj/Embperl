
/*
 * *********** WARNING **************
 * This file generated by Embperl::WrapXS/2.0.0
 * Any changes made here will be lost
 * ***********************************
 * 1. /usr/lib/perl5/site_perl/5.16.0/ExtUtils/XSBuilder/WrapXS.pm:52
 * 2. /usr/lib/perl5/site_perl/5.16.0/ExtUtils/XSBuilder/WrapXS.pm:2068
 * 3. xsbuilder/xs_generate.pl:6
 */


#include "ep.h"

#include "epmacro.h"

#include "epdat2.h"

#include "eptypes.h"

#include "eppublic.h"

#include "EXTERN.h"

#include "perl.h"

#include "XSUB.h"

#include "ep_xs_sv_convert.h"

#include "ep_xs_typedefs.h"



void Embperl__Thread_destroy (pTHX_ Embperl__Thread  obj) {
            if (obj -> pApplications)
                SvREFCNT_dec(obj -> pApplications);
            if (obj -> pEnvHash)
                SvREFCNT_dec(obj -> pEnvHash);
            if (obj -> pFormHash)
                SvREFCNT_dec(obj -> pFormHash);
            if (obj -> pFormSplitHash)
                SvREFCNT_dec(obj -> pFormSplitHash);
            if (obj -> pInputHash)
                SvREFCNT_dec(obj -> pInputHash);
            if (obj -> pFormArray)
                SvREFCNT_dec(obj -> pFormArray);
            if (obj -> pHeaderHash)
                SvREFCNT_dec(obj -> pHeaderHash);

};



void Embperl__Thread_new_init (pTHX_ Embperl__Thread  obj, SV * item, int overwrite) {

    SV * * tmpsv ;

    if (SvTYPE(item) == SVt_PVMG) 
        memcpy (obj, (void *)SvIVX(item), sizeof (*obj)) ;
    else if (SvTYPE(item) == SVt_PVHV) {
        if ((tmpsv = hv_fetch((HV *)item, "applications", sizeof("applications") - 1, 0)) || overwrite) {
            HV * tmpobj = ((HV *)epxs_sv2_HVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pApplications = (HV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pApplications = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "curr_req", sizeof("curr_req") - 1, 0)) || overwrite) {
            obj -> pCurrReq = (struct tReq *)epxs_sv2_Embperl__Req((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "pid", sizeof("pid") - 1, 0)) || overwrite) {
            obj -> nPid = (pid_t)epxs_sv2_IV((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)) ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "env_hash", sizeof("env_hash") - 1, 0)) || overwrite) {
            HV * tmpobj = ((HV *)epxs_sv2_HVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pEnvHash = (HV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pEnvHash = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "form_hash", sizeof("form_hash") - 1, 0)) || overwrite) {
            HV * tmpobj = ((HV *)epxs_sv2_HVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pFormHash = (HV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pFormHash = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "form_split_hash", sizeof("form_split_hash") - 1, 0)) || overwrite) {
            HV * tmpobj = ((HV *)epxs_sv2_HVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pFormSplitHash = (HV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pFormSplitHash = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "input_hash", sizeof("input_hash") - 1, 0)) || overwrite) {
            HV * tmpobj = ((HV *)epxs_sv2_HVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pInputHash = (HV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pInputHash = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "form_array", sizeof("form_array") - 1, 0)) || overwrite) {
            AV * tmpobj = ((AV *)epxs_sv2_AVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pFormArray = (AV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pFormArray = NULL ;
        }
        if ((tmpsv = hv_fetch((HV *)item, "header_hash", sizeof("header_hash") - 1, 0)) || overwrite) {
            HV * tmpobj = ((HV *)epxs_sv2_HVREF((tmpsv && *tmpsv?*tmpsv:&PL_sv_undef)));
            if (tmpobj)
                obj -> pHeaderHash = (HV *)SvREFCNT_inc(tmpobj);
            else
                obj -> pHeaderHash = NULL ;
        }
   ; }

    else
        croak ("initializer for Embperl::Thread::new is not a hash or object reference") ;

} ;


MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

HV *
applications(obj, val=NULL)
    Embperl::Thread obj
    HV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (HV *)  obj->pApplications;

    if (items > 1) {
        obj->pApplications = (HV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

Embperl::Req
curr_req(obj, val=NULL)
    Embperl::Thread obj
    Embperl::Req val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (Embperl__Req)  obj->pCurrReq;

    if (items > 1) {
        obj->pCurrReq = (Embperl__Req) val;
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

pid_t
pid(obj, val=0)
    Embperl::Thread obj
    pid_t val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (pid_t)  obj->nPid;

    if (items > 1) {
        obj->nPid = (pid_t) val;
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

HV *
env_hash(obj, val=NULL)
    Embperl::Thread obj
    HV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (HV *)  obj->pEnvHash;

    if (items > 1) {
        obj->pEnvHash = (HV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

HV *
form_hash(obj, val=NULL)
    Embperl::Thread obj
    HV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (HV *)  obj->pFormHash;

    if (items > 1) {
        obj->pFormHash = (HV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

HV *
form_split_hash(obj, val=NULL)
    Embperl::Thread obj
    HV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (HV *)  obj->pFormSplitHash;

    if (items > 1) {
        obj->pFormSplitHash = (HV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

HV *
input_hash(obj, val=NULL)
    Embperl::Thread obj
    HV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (HV *)  obj->pInputHash;

    if (items > 1) {
        obj->pInputHash = (HV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

AV *
form_array(obj, val=NULL)
    Embperl::Thread obj
    AV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (AV *)  obj->pFormArray;

    if (items > 1) {
        obj->pFormArray = (AV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 

HV *
header_hash(obj, val=NULL)
    Embperl::Thread obj
    HV * val
  PREINIT:
    /*nada*/

  CODE:
    RETVAL = (HV *)  obj->pHeaderHash;

    if (items > 1) {
        obj->pHeaderHash = (HV *)SvREFCNT_inc(val);
    }
  OUTPUT:
    RETVAL

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 



SV *
new (class,initializer=NULL)
    char * class
    SV * initializer 
PREINIT:
    SV * svobj ;
    Embperl__Thread  cobj ;
    SV * tmpsv ;
CODE:
    epxs_Embperl__Thread_create_obj(cobj,svobj,RETVAL,malloc(sizeof(*cobj))) ;

    if (initializer) {
        if (!SvROK(initializer) || !(tmpsv = SvRV(initializer))) 
            croak ("initializer for Embperl::Thread::new is not a reference") ;

        if (SvTYPE(tmpsv) == SVt_PVHV || SvTYPE(tmpsv) == SVt_PVMG)  
            Embperl__Thread_new_init (aTHX_ cobj, tmpsv, 0) ;
        else if (SvTYPE(tmpsv) == SVt_PVAV) {
            int i ;
            SvGROW(svobj, sizeof (*cobj) * av_len((AV *)tmpsv)) ;     
            for (i = 0; i <= av_len((AV *)tmpsv); i++) {
                SV * * itemrv = av_fetch((AV *)tmpsv, i, 0) ;
                SV * item ;
                if (!itemrv || !*itemrv || !SvROK(*itemrv) || !(item = SvRV(*itemrv))) 
                    croak ("array element of initializer for Embperl::Thread::new is not a reference") ;
                Embperl__Thread_new_init (aTHX_ &cobj[i], item, 1) ;
            }
        }
        else {
             croak ("initializer for Embperl::Thread::new is not a hash/array/object reference") ;
        }
    }
OUTPUT:
    RETVAL 

MODULE = Embperl::Thread    PACKAGE = Embperl::Thread 



void
DESTROY (obj)
    Embperl::Thread  obj 
CODE:
    Embperl__Thread_destroy (aTHX_ obj) ;

PROTOTYPES: disabled

BOOT:
    items = items; /* -Wall */
