.class Lcom/samsung/privilege/activity/ProfileActivity$14;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->initialBeacon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 9
    .param p1, "on"    # Z

    .prologue
    const/4 v6, 0x1

    .line 594
    if-ne p1, v6, :cond_1f

    .line 595
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1e

    .line 596
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v3, v4

    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v4, v3, v6

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 607
    :cond_1e
    :goto_1e
    return-void

    .line 600
    :cond_1f
    :try_start_1f
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    .line 601
    invoke-virtual {v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 602
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_4e} :catch_4f

    goto :goto_1e

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_4f
    move-exception v0

    .line 604
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1e
.end method
