.class Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Lcom/samsung/privilege/GCMIntentService$GCMMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myGCMMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 2

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;)V
    .registers 3

    .prologue
    .line 1038
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V

    return-void
.end method


# virtual methods
.method public onGCMMessage(Lcom/samsung/privilege/bean/MessageGCM;)V
    .registers 4
    .param p1, "messageGCM"    # Lcom/samsung/privilege/bean/MessageGCM;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1042
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$myGCMMessageListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->addNotification(Lcom/samsung/privilege/bean/MessageGCM;Z)V
    invoke-static {v0, p1, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$4(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/samsung/privilege/bean/MessageGCM;Z)V

    .line 1044
    :cond_e
    return-void
.end method
