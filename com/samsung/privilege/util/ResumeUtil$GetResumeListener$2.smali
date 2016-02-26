.class Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 320
    const-string v1, ""

    .line 321
    .local v1, "strApp_name":Ljava/lang/String;
    const-string v2, ""

    .line 322
    .local v2, "strBuzzebees_error_message":Ljava/lang/String;
    const-string v3, ""

    .line 324
    .local v3, "strBuzzebees_error_message_th":Ljava/lang/String;
    :try_start_6
    iget-object v4, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$0(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v4, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$0(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09029b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 326
    iget-object v4, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$0(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0900b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2c} :catch_4e

    move-result-object v3

    .line 331
    :goto_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$2;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$1(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/samsung/privilege/util/ResumeUtil;->showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 332
    return-void

    .line 327
    :catch_4e
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/util/ResumeUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/util/ResumeUtil;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception := "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method
