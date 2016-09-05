.class public final Lcom/google/android/gms/internal/zznx;
.super Ljava/lang/Object;


# direct methods
.method public static a()Z
    .registers 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->a(I)Z

    move-result v0

    return v0
.end method

.method private static a(I)Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b()Z
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->a(I)Z

    move-result v0

    return v0
.end method

.method public static c()Z
    .registers 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->a(I)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .registers 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->a(I)Z

    move-result v0

    return v0
.end method
