.class Lcom/samsung/privilege/activity/MainMenuFragment$29;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$29;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 3378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3380
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3381
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$32(Z)V

    .line 3383
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 3384
    .local v0, "session":Lcom/facebook/Session;
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$29;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->updateViewForUser(Lcom/facebook/Session;)V
    invoke-static {v1, v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$21(Lcom/samsung/privilege/activity/MainMenuFragment;Lcom/facebook/Session;)V

    .line 3385
    return-void
.end method
