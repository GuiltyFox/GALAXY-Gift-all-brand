.class Lcom/samsung/privilege/activity/MainMenuFragment$28;
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$28;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 3366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 3368
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3369
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$32(Z)V

    .line 3371
    sget-object v1, Lcom/samsung/privilege/AppSetting;->UriPlayStoreGift:Ljava/lang/String;

    .line 3373
    .local v1, "appNameBuzzebees":Ljava/lang/String;
    :try_start_9
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$28;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_28} :catch_29

    .line 3377
    :goto_28
    return-void

    .line 3374
    :catch_29
    move-exception v0

    .line 3375
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$28;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://play.google.com/store/apps/details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_28
.end method
