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
    .line 307
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 310
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v1, "request_otp"

    invoke-static {v0, v1}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 313
    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 314
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$7;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v2, v2, Lcom/samsung/privilege/util/DialogLoginGift$7;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v3, v3, Lcom/samsung/privilege/util/DialogLoginGift$7;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_28
    return-void

    .line 316
    :cond_29
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

    invoke-static/range {v0 .. v6}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_28

    .line 318
    :catch_43
    move-exception v0

    .line 319
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$7$1;->b:Lcom/samsung/privilege/util/DialogLoginGift$7;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$7;->b:Landroid/content/Context;

    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_28
.end method
