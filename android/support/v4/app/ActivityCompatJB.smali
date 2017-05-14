.class Landroid/support/v4/app/ActivityCompatJB;
.super Ljava/lang/Object;
.source "ActivityCompatJB.java"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 43
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 37
    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 39
    return-void
.end method
