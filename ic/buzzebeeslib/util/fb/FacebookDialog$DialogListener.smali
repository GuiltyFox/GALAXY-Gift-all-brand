.class public interface abstract Lic/buzzebeeslib/util/fb/FacebookDialog$DialogListener;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/util/fb/FacebookDialog;
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

.method public abstract onError(Lic/buzzebeeslib/util/fb/DialogError;)V
.end method

.method public abstract onFacebookError(Lic/buzzebeeslib/util/fb/FacebookError;)V
.end method
