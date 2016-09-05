.class public final Lbolts/AppLinks;
.super Ljava/lang/Object;
.source "AppLinks.java"


# direct methods
.method public static a(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 36
    const-string/jumbo v0, "al_applink_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3

    .prologue
    .line 47
    invoke-static {p0}, Lbolts/AppLinks;->a(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    if-nez v0, :cond_8

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_7
.end method
