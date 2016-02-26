.class Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;
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

.field private final synthetic val$resume_message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    iput-object p2, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->val$resume_message:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$0(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$1(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/ResumeUtil;->handleTableVersion(Landroid/content/Context;Landroid/app/Activity;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->val$resume_message:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->val$resume_message:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 308
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->this$1:Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;

    # getter for: Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->gActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;->access$1(Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/ResumeUtil$GetResumeListener$1;->val$resume_message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogUtil;->showDialogMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    :cond_28
    return-void
.end method
