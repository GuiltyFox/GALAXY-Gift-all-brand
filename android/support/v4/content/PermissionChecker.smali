.class public final Landroid/support/v4/content/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v4/content/PermissionChecker;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_9

    .line 111
    :cond_8
    :goto_8
    return v0

    .line 93
    :cond_9
    invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    if-nez v2, :cond_11

    move v0, v1

    .line 95
    goto :goto_8

    .line 98
    :cond_11
    if-nez p4, :cond_22

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 100
    if-eqz v3, :cond_8

    array-length v4, v3

    if-lez v4, :cond_8

    .line 103
    aget-object p4, v3, v1

    .line 106
    :cond_22
    invoke-static {p0, v2, p4}, Landroid/support/v4/app/AppOpsManagerCompat;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 108
    const/4 v0, -0x2

    goto :goto_8

    :cond_2a
    move v0, v1

    .line 111
    goto :goto_8
.end method
