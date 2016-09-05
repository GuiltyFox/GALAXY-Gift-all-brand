.class public abstract Lcom/google/android/gms/analytics/internal/zzac$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzac;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/zzac;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/analytics/internal/zzac;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzac;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/analytics/internal/zzac$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/zzac$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_5a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_8

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/analytics/internal/Command;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/zzac$zza;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_8

    :sswitch_3a
    const-string/jumbo v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzac$zza;->a()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_8

    :sswitch_48
    const-string/jumbo v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzac$zza;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_8

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_48
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
