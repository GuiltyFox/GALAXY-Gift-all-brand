.class Lcom/samsung/privilege/activity/ProfileActivity$14;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2

    .prologue
    .line 597
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 600
    if-ne p1, v4, :cond_1f

    .line 601
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1e

    .line 602
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v4

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 613
    :cond_1e
    :goto_1e
    return-void

    .line 606
    :cond_1f
    :try_start_1f
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    .line 607
    invoke-virtual {v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 608
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$14;->a:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_4e} :catch_4f

    goto :goto_1e

    .line 609
    :catch_4f
    move-exception v0

    .line 610
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1e
.end method
