.class Lcom/samsung/privilege/activity/MainMenuFragment$21;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->makeMeRequest(Lcom/facebook/Session;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$session:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->val$session:Lcom/facebook/Session;

    .line 2719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .registers 6
    .param p1, "user"    # Lcom/facebook/model/GraphUser;
    .param p2, "response"    # Lcom/facebook/Response;

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2723
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->val$session:Lcom/facebook/Session;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    if-ne v0, v1, :cond_6b

    .line 2724
    if-eqz p1, :cond_6b

    .line 2725
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetFacebookUID(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2726
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetFacebookName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 2728
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 2729
    const-string v0, "APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=blue>Authenticate Facebook Data:</font><br><font color=green>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 2732
    :cond_64
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->val$session:Lcom/facebook/Session;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->requestBuzzebeesAuth(Lcom/facebook/Session;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$31(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V

    .line 2735
    :cond_6b
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_7a

    .line 2736
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$21;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->handleError(Lcom/facebook/FacebookRequestError;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$32(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/FacebookRequestError;)V

    .line 2739
    :cond_7a
    return-void
.end method
