.class Lcom/samsung/privilege/util/ResumeUtil$2$2;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil$2;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/ResumeUtil$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/ResumeUtil$2;)V
    .registers 2

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$2$2;->a:Lcom/samsung/privilege/util/ResumeUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 282
    const-string/jumbo v0, ""

    .line 283
    const-string/jumbo v2, ""

    .line 284
    const-string/jumbo v0, ""

    .line 286
    :try_start_9
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2$2;->a:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v1, v1, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const v3, 0x7f0903e3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$2$2;->a:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v1, v1, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const v3, 0x7f090404

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_49

    move-result-object v1

    .line 288
    :try_start_1e
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2$2;->a:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v2, v2, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    const v3, 0x7f090405

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_6d

    move-result-object v0

    .line 294
    :goto_29
    iget-object v2, p0, Lcom/samsung/privilege/util/ResumeUtil$2$2;->a:Lcom/samsung/privilege/util/ResumeUtil$2;

    iget-object v2, v2, Lcom/samsung/privilege/util/ResumeUtil$2;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    return-void

    .line 289
    :catch_49
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    .line 290
    :goto_4d
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception := "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 289
    :catch_6d
    move-exception v2

    goto :goto_4d
.end method
