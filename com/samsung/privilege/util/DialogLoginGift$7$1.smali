.class Lcom/samsung/privilege/util/DialogLoginGift$7$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$7;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/util/DialogLoginGift$7;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$7;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 315
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v1, "request_otp"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 318
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 319
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$7;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$7;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$7;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v4, v4, Lcom/samsung/privilege/util/DialogLoginGift$7;->f:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    :goto_2c
    return-void

    .line 321
    :cond_2d
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$7;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$7;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v7, v7, Lcom/samsung/privilege/util/DialogLoginGift$7;->f:Ljava/lang/Object;

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_2c

    .line 323
    :catch_4b
    move-exception v0

    .line 324
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2c
.end method
