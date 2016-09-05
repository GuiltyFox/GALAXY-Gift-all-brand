.class Lcom/samsung/privilege/activity/LoginActivity$1;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/LoginActivity;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/privilege/activity/LoginActivity$1;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginResult;)V
    .registers 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$1;->a:Lcom/samsung/privilege/activity/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2d

    .line 117
    iget-object v1, p0, Lcom/samsung/privilege/activity/LoginActivity$1;->a:Lcom/samsung/privilege/activity/LoginActivity;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/LoginActivity;->a(Ljava/lang/String;)V

    .line 121
    :goto_2c
    return-void

    .line 119
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$1;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const-string/jumbo v1, "Can not get Facebook AccessToken!!!"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public onCancel()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$1;->a:Lcom/samsung/privilege/activity/LoginActivity;

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/LoginActivity$1;->a:Lcom/samsung/privilege/activity/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/LoginActivity;->a(Lcom/samsung/privilege/activity/LoginActivity;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 110
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/LoginActivity$1;->a(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
