.class Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$2;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$2;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$2;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v0}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$2;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->buzzebees_error_message_en:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$2;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->buzzebees_error_message_th:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$2;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$1(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ResumeUtil;->showDialogBuzzebeesError(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 168
    return-void
.end method
