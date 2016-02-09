.class Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;
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

.field private final synthetic val$allow_use:Z

.field private final synthetic val$has_new_version:Z


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;ZZ)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    iput-boolean p2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->val$allow_use:Z

    iput-boolean p3, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->val$has_new_version:Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 148
    iget-boolean v0, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->val$allow_use:Z

    if-nez v0, :cond_52

    .line 149
    # getter for: Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "don\'t allow use, close application..."

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v0}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->allow_use_message_en:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->allow_use_message_th:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$1(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 159
    :goto_51
    return-void

    .line 152
    :cond_52
    iget-boolean v0, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->val$has_new_version:Z

    if-eqz v0, :cond_a4

    .line 153
    # getter for: Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "have new version?"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v0}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->has_new_version_message_en:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$0(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$string;->has_new_version_message_th:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener$1;->this$1:Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;

    # getter for: Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v2}, Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;->access$1(Lic/buzzebeeslib/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_51

    .line 156
    :cond_a4
    # getter for: Lic/buzzebeeslib/util/ResumeUtil;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/util/ResumeUtil;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "do nothing..."

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51
.end method
