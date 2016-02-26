.class Lcom/samsung/privilege/activity/MainMenuFragment$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$savedInstanceState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$1;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$1;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$1;->val$savedInstanceState:Landroid/os/Bundle;

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->restoreInstanceState(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$23(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/os/Bundle;)V

    .line 267
    :cond_b
    return-void
.end method
