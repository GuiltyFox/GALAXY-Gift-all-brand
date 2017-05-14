.class Landroid/support/v4/app/ActivityCompatApi23;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"


# direct methods
.method private static a(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_8

    .line 66
    new-instance v0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V

    .line 68
    :cond_8
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .registers 3

    .prologue
    .line 55
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 56
    return-void
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    if-eqz v0, :cond_a

    move-object v0, p0

    .line 42
    check-cast v0, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;

    .line 43
    invoke-interface {v0, p2}, Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;->validateRequestPermissionsRequestCode(I)V

    .line 45
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
    .registers 3

    .prologue
    .line 60
    invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi23;->a(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)Landroid/app/SharedElementCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V

    .line 61
    return-void
.end method
