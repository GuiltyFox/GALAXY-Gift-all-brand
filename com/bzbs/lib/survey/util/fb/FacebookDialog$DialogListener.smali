.class public interface abstract Lcom/bzbs/lib/survey/util/fb/FacebookDialog$DialogListener;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/util/fb/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Lcom/bzbs/lib/survey/util/fb/DialogError;)V
.end method

.method public abstract onFacebookError(Lcom/bzbs/lib/survey/util/fb/FacebookError;)V
.end method
