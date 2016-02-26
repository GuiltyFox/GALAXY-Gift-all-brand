.class Lcom/samsung/privilege/activity/MainMenuFragment$16;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->showDialogSignOut(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

.field private final synthetic val$dialogSerial:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$16;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$16;->val$dialogSerial:Landroid/app/Dialog;

    .line 2047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$16;->val$dialogSerial:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2051
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$16;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 2054
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$16;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 2055
    return-void
.end method
