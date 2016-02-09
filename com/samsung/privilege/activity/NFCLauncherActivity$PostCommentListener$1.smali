.class Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;
.super Ljava/lang/Object;
.source "NFCLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;

.field private final synthetic val$e:Lcom/facebook/android/FacebookError;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;Lcom/facebook/android/FacebookError;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;->this$1:Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;->val$e:Lcom/facebook/android/FacebookError;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 253
    const-string v0, ""

    .line 254
    .local v0, "strError":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;->this$1:Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;

    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;)Lcom/samsung/privilege/activity/NFCLauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 255
    iget-object v1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;->val$e:Lcom/facebook/android/FacebookError;

    invoke-virtual {v1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 257
    iget-object v1, p0, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener$1;->this$1:Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;

    # getter for: Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->this$0:Lcom/samsung/privilege/activity/NFCLauncherActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity$PostCommentListener;)Lcom/samsung/privilege/activity/NFCLauncherActivity;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/NFCLauncherActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/NFCLauncherActivity;->access$1(Lcom/samsung/privilege/activity/NFCLauncherActivity;Ljava/lang/String;)V

    .line 261
    :cond_29
    return-void
.end method
