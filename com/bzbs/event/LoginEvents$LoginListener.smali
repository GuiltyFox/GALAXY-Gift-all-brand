.class public interface abstract Lcom/bzbs/event/LoginEvents$LoginListener;
.super Ljava/lang/Object;
.source "LoginEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/event/LoginEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginListener"
.end annotation


# virtual methods
.method public abstract onAuthenOTPSuccess(Ljava/lang/String;)V
.end method

.method public abstract onLoginDeviceSuccess(Ljava/lang/String;)V
.end method

.method public abstract onLoginFacebookSuccess(Ljava/lang/String;)V
.end method
