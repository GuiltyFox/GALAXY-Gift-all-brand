.class public final Lcom/google/android/gms/internal/zznx;
.super Ljava/lang/Object;


# direct methods
.method public static isAtLeastL()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zznx;->zzrW()Z

    move-result v0

    return v0
.end method

.method private static zzcr(I)Z
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

.method public static zzrN()Z
    .registers 1

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrO()Z
    .registers 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrP()Z
    .registers 1

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrQ()Z
    .registers 1

    const/16 v0, 0xe

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrR()Z
    .registers 1

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrS()Z
    .registers 1

    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrT()Z
    .registers 1

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrU()Z
    .registers 1

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrV()Z
    .registers 1

    const/16 v0, 0x14

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrW()Z
    .registers 1

    const/16 v0, 0x15

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method

.method public static zzrX()Z
    .registers 1

    const/16 v0, 0x17

    invoke-static {v0}, Lcom/google/android/gms/internal/zznx;->zzcr(I)Z

    move-result v0

    return v0
.end method
