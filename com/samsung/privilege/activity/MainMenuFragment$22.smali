.class Lcom/samsung/privilege/activity/MainMenuFragment$22;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->handleError(Lcom/facebook/FacebookRequestError;)V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$22;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 2757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->M_FACEBOOK_URL:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$33()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2761
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$22;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    .line 2762
    return-void
.end method
