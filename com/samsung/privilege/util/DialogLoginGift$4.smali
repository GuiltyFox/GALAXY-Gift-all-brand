.class final Lcom/samsung/privilege/util/DialogLoginGift$4;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 195
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->c:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginResult;)V
    .registers 11

    .prologue
    .line 200
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 202
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_40

    .line 205
    :try_start_d
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->c:Landroid/os/Handler;

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    iget-object v8, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->d:Ljava/lang/Object;

    invoke-static/range {v0 .. v8}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_2f

    .line 215
    :goto_26
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->e:Ljava/lang/String;

    const-string/jumbo v1, "Click Facebook Login Success"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void

    .line 206
    :catch_2f
    move-exception v0

    .line 207
    const-string/jumbo v0, "Can not Login!!!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->X(Landroid/content/Context;)V

    goto :goto_26

    .line 212
    :cond_40
    const-string/jumbo v0, "Can not get Facebook AccessToken!!!"

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_26
.end method

.method public onCancel()V
    .registers 3

    .prologue
    .line 222
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 224
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->e:Ljava/lang/String;

    const-string/jumbo v1, "Click Facebook Login Cancel"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    .prologue
    .line 231
    invoke-static {}, Lcom/samsung/privilege/util/DialogLoginGift;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 233
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$4;->e:Ljava/lang/String;

    const-string/jumbo v1, "Click Facebook Login Fail"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 195
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/DialogLoginGift$4;->a(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
