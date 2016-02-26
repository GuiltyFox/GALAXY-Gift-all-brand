.class Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$2;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$2;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;

    .line 2433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener$2;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$GetHistoryListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v0

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->mMainMenuAdapter:Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$16(Lcom/samsung/privilege/activity/MainMenuFragment;)Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment$MainMenuListAdapter;->clearItemHistory()V

    .line 2436
    return-void
.end method
