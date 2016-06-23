.class public Lcom/jaalee/sdk/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/jaalee/sdk/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jaalee/sdk/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beaconFromLeScan(Landroid/bluetooth/BluetoothDevice;I[B)Lcom/jaalee/sdk/Beacon;
    .registers 15

    const/16 v11, 0x1a

    const/16 v6, 0xcb

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/jaalee/sdk/internal/HashCode;->fromBytes([B)Lcom/jaalee/sdk/internal/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jaalee/sdk/internal/HashCode;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "%s"

    new-array v2, v9, [Ljava/lang/Object;

    const/16 v3, 0xa

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "0201061aff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v9

    :goto_2a
    if-eqz v0, :cond_1a9

    move v10, v9

    :goto_2d
    const-string/jumbo v0, "0201041308"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Lcom/jaalee/sdk/Beacon;

    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/jaalee/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    :goto_48
    return-object v0

    :cond_49
    const-string/jumbo v0, "0201041bff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x42

    if-le v0, v3, :cond_1ac

    const-string/jumbo v0, "%s"

    new-array v3, v9, [Ljava/lang/Object;

    const/16 v5, 0x3e

    const/16 v7, 0x42

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1308"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    move v0, v9

    goto :goto_2a

    :cond_78
    const-string/jumbo v0, "0201041308"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    move v0, v9

    goto :goto_2a

    :cond_83
    move v0, v4

    :goto_84
    array-length v2, p2

    if-lt v0, v2, :cond_9a

    :cond_87
    new-instance v0, Lcom/jaalee/sdk/Beacon;

    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/jaalee/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto :goto_48

    :cond_9a
    aget-byte v2, p2, v0

    invoke-static {v2}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v2

    if-eqz v2, :cond_87

    add-int/lit8 v3, v0, 0x1

    array-length v5, p2

    if-ge v3, v5, :cond_87

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p2, v3

    invoke-static {v3}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_b7

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_b7
    if-eq v2, v11, :cond_bd

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_180

    :cond_bd
    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p2, v3

    invoke-static {v3}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_157

    const-string/jumbo v3, "%s-%s-%s-%s-%s"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0x12

    invoke-virtual {v1, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0x1e

    invoke-virtual {v1, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v9

    const/4 v4, 0x2

    const/16 v6, 0x1e

    const/16 v7, 0x22

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const/16 v6, 0x22

    const/16 v7, 0x26

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v4, 0x4

    const/16 v6, 0x26

    const/16 v7, 0x32

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x16

    aget-byte v3, p2, v3

    invoke-static {v3}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x17

    aget-byte v4, p2, v4

    invoke-static {v4}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v3, v0, 0x18

    aget-byte v3, p2, v3

    invoke-static {v3}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v0, 0x19

    aget-byte v5, p2, v5

    invoke-static {v5}, Lcom/jaalee/sdk/Utils;->unsignedByteToInt(B)I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v3, v0, 0x1a

    aget-byte v6, p2, v3

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_146

    add-int/lit8 v0, v0, 0x1b

    aget-byte v8, p2, v0

    new-instance v0, Lcom/jaalee/sdk/Beacon;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v7, p1

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/jaalee/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_48

    :cond_146
    new-instance v0, Lcom/jaalee/sdk/Beacon;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v7, p1

    move v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/jaalee/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_48

    :cond_157
    sget-object v0, Lcom/jaalee/sdk/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Manufacturer specific data does not start with 0x4C000215, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jaalee/sdk/Beacon;

    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/jaalee/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_48

    :cond_180
    sget-object v0, Lcom/jaalee/sdk/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Manufacturer specific data should have 26 bytes length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/jaalee/sdk/Beacon;

    const-string/jumbo v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/jaalee/sdk/Beacon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    goto/16 :goto_48

    :cond_1a9
    move v10, v4

    goto/16 :goto_2d

    :cond_1ac
    move v0, v4

    goto/16 :goto_2a
.end method

.method public static computeAccuracy(Lcom/jaalee/sdk/Beacon;)D
    .registers 7

    invoke-virtual {p0}, Lcom/jaalee/sdk/Beacon;->getRssi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_12

    const-wide/high16 v0, -0x4010000000000000L

    :goto_11
    return-wide v0

    :cond_12
    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/jaalee/sdk/Beacon;->getMeasuredPower()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_26

    const-wide/high16 v2, 0x4020000000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_11

    :cond_26
    const-wide v2, 0x3fe6646f15619115L

    const-wide v4, 0x401ed6872b020c4aL

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fbc6a7ef9db22d1L

    add-double/2addr v0, v2

    goto :goto_11
.end method

.method public static computeProximity(Lcom/jaalee/sdk/Beacon;)I
    .registers 3

    invoke-static {p0}, Lcom/jaalee/sdk/Utils;->computeAccuracy(Lcom/jaalee/sdk/Beacon;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jaalee/sdk/Utils;->proximityFromAccuracy(D)I

    move-result v0

    return v0
.end method

.method public static isBeaconInRegion(Lcom/jaalee/sdk/Beacon;Lcom/jaalee/sdk/Region;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getProximityUUID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/jaalee/sdk/Beacon;->getProximityUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getProximityUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_14
    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMajor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/jaalee/sdk/Beacon;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMajor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3e

    :cond_28
    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMinor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/jaalee/sdk/Beacon;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcom/jaalee/sdk/Region;->getMinor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3e

    :cond_3c
    const/4 v0, 0x1

    :goto_3d
    return v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public static normalize16BitUnsignedInt(I)I
    .registers 3

    const/4 v0, 0x1

    const v1, 0xffff

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static normalizeProximityUUID(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/16 v8, 0x10

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x20

    if-ne v0, v4, :cond_57

    move v0, v1

    :goto_1f
    const-string/jumbo v4, "Proximity UUID must be 32 characters without dashes"

    invoke-static {v0, v4}, Lcom/jaalee/sdk/internal/e;->a(ZLjava/lang/Object;)V

    const-string/jumbo v0, "%s-%s-%s-%s-%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x3

    const/16 v2, 0x14

    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    const/16 v2, 0x14

    const/16 v5, 0x20

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_57
    move v0, v2

    goto :goto_1f
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static proximityFromAccuracy(D)I
    .registers 4

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const-wide/high16 v0, 0x3fe0000000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const-wide/high16 v0, 0x4008000000000000L

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_18

    const/4 v0, 0x2

    goto :goto_7

    :cond_18
    const/4 v0, 0x3

    goto :goto_7
.end method

.method public static restartBluetooth(Landroid/content/Context;Lcom/jaalee/sdk/RestartCompletedListener;)V
    .registers 5

    const-string/jumbo v0, "bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/jaalee/sdk/f;

    invoke-direct {v2, v0, p1}, Lcom/jaalee/sdk/f;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/jaalee/sdk/RestartCompletedListener;)V

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method private static unsignedByteToInt(B)I
    .registers 2

    and-int/lit16 v0, p0, 0xff

    return v0
.end method
