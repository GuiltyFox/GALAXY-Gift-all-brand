.class Lcom/samsung/privilege/util/DialogProfile$6$1;
.super Ljava/lang/Object;
.source "DialogProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogProfile$6;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogProfile$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogProfile$6;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 528
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 530
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->f()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 531
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$6;->b:Landroid/app/Dialog;

    const v1, 0x7f1003fb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :try_start_17
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v1, "Token"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_37

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 537
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 539
    :cond_37
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->h(Landroid/content/Context;Z)Z

    .line 541
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->d()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogProfile$6;->a:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogProfile;->a(Ljava/lang/String;Landroid/os/Handler;)V

    .line 543
    invoke-static {}, Lcom/samsung/privilege/util/DialogProfile;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 544
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogProfile$6;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogProfile$6;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogProfile$6;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogProfile$6$1;->b:Lcom/samsung/privilege/util/DialogProfile$6;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogProfile$6;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bzbs/event/ProfileEvents;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6b} :catch_6c

    .line 548
    :goto_6b
    return-void

    .line 545
    :catch_6c
    move-exception v0

    goto :goto_6b
.end method
