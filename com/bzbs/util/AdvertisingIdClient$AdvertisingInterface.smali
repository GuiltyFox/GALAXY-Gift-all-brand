.class final Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;
.super Ljava/lang/Object;
.source "AdvertisingIdClient.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->a:Landroid/os/IBinder;

    .line 92
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 103
    :try_start_8
    const-string/jumbo v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 111
    return-object v0

    .line 108
    :catchall_23
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public a(Z)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 119
    :try_start_a
    const-string/jumbo v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 120
    if-eqz p1, :cond_2d

    move v2, v0

    :goto_13
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v2, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->a:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 122
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 123
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v2

    if-eqz v2, :cond_2f

    .line 125
    :goto_26
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 128
    return v0

    :cond_2d
    move v2, v1

    .line 120
    goto :goto_13

    :cond_2f
    move v0, v1

    .line 123
    goto :goto_26

    .line 125
    :catchall_31
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/bzbs/util/AdvertisingIdClient$AdvertisingInterface;->a:Landroid/os/IBinder;

    return-object v0
.end method
