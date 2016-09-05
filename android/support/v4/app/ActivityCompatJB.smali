.class Landroid/support/v4/app/ActivityCompatJB;
.super Ljava/lang/Object;
.source "ActivityCompatJB.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 35
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 31
    return-void
.end method
