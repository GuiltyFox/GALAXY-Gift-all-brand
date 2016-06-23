.class final Lcom/jaalee/sdk/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private synthetic a:Lcom/jaalee/sdk/service/BeaconService;


# direct methods
.method private constructor <init>(Lcom/jaalee/sdk/service/BeaconService;)V
    .registers 2

    iput-object p1, p0, Lcom/jaalee/sdk/service/j;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jaalee/sdk/service/BeaconService;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/jaalee/sdk/service/j;-><init>(Lcom/jaalee/sdk/service/BeaconService;)V

    return-void
.end method


# virtual methods
.method public final onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 8

    iget-object v0, p0, Lcom/jaalee/sdk/service/j;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v0}, Lcom/jaalee/sdk/service/BeaconService;->a(Lcom/jaalee/sdk/service/BeaconService;)V

    invoke-static {p1, p2, p3}, Lcom/jaalee/sdk/Utils;->beaconFromLeScan(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/jaalee/sdk/Beacon;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    iget-object v1, p0, Lcom/jaalee/sdk/service/j;->a:Lcom/jaalee/sdk/service/BeaconService;

    invoke-static {v1}, Lcom/jaalee/sdk/service/BeaconService;->b(Lcom/jaalee/sdk/service/BeaconService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b
.end method
