.class public Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "MainMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthBuzzeBeesListener"
.end annotation


# instance fields
.field private gPrevLocal:Ljava/lang/String;

.field final session:Lcom/facebook/Session;

.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Ljava/lang/String;)V
    .registers 4
    .param p2, "prev_local"    # Ljava/lang/String;

    .prologue
    .line 3017
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    .line 3014
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->session:Lcom/facebook/Session;

    .line 3015
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->gPrevLocal:Ljava/lang/String;

    .line 3018
    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->gPrevLocal:Ljava/lang/String;

    .line 3019
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->gPrevLocal:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)Lcom/samsung/privilege/activity/MainMenuFragment;
    .registers 2

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 3024
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$20()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostAuthBuzzeBeesListener|onComplete)response_code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCATAUTH:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$20()Ljava/lang/String;

    move-result-object v0

    const-string v1, "----------------------------------------->"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 3027
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_88

    .line 3028
    const-string v0, "APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=green>(PostAuthListener|onComplete)code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 3034
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3212
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener$2;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3219
    :cond_87
    return-void

    .line 3030
    :cond_88
    const-string v0, "APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=red>(PostAuthListener|onComplete)code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font><br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$AuthBuzzeBeesListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_6b
.end method
