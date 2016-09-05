.class public final Landroid/support/v4/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# direct methods
.method public static a(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_b

    .line 37
    invoke-static {p0}, Landroid/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub;->a(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 39
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroid/support/v4/os/ParcelableCompat$CompatCreator;

    invoke-direct {v0, p0}, Landroid/support/v4/os/ParcelableCompat$CompatCreator;-><init>(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    goto :goto_a
.end method
