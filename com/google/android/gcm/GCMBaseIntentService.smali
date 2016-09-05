.class public abstract Lcom/google/android/gcm/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "GCMBaseIntentService.java"


# static fields
.field private static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BACKOFF_MS:I

.field public static final TAG:Ljava/lang/String; = "GCMBaseIntentService"

.field private static final TOKEN:Ljava/lang/String;

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GCM_LIB"

.field private static sCounter:I

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mSenderIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 62
    const-class v0, Lcom/google/android/gcm/GCMBaseIntentService;

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    .line 75
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 89
    const-string/jumbo v0, "DynamicSenderIds"

    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 101
    iput-object p2, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 96
    invoke-static {p1}, Lcom/google/android/gcm/GCMBaseIntentService;->getName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 270
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_3
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1a

    .line 273
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 275
    const/4 v2, 0x1

    const-string/jumbo v3, "GCM_LIB"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 278
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_30

    .line 279
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v1, "Acquiring wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 281
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    return-void

    .line 278
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GCMIntentService-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Intent service name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v0
.end method

.method private static getName([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .prologue
    const/4 v6, 0x0

    .line 286
    const-string/jumbo v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string/jumbo v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 288
    const-string/jumbo v2, "unregistered"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    const-string/jumbo v3, "GCMBaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRegistration: registrationId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", unregistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v0, :cond_52

    .line 294
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->h(Landroid/content/Context;)V

    .line 295
    invoke-static {p1, v0}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    :cond_51
    :goto_51
    return-void

    .line 301
    :cond_52
    if-eqz v2, :cond_5f

    .line 303
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->h(Landroid/content/Context;)V

    .line 304
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_51

    .line 311
    :cond_5f
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Registration error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string/jumbo v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 314
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 315
    if-eqz v0, :cond_f3

    .line 316
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->i(Landroid/content/Context;)I

    move-result v1

    .line 317
    div-int/lit8 v0, v1, 0x2

    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 319
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Scheduling registration retry, backoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v3, "token"

    sget-object v4, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 326
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 328
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 332
    sget v0, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    if-ge v1, v0, :cond_51

    .line 333
    mul-int/lit8 v0, v1, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gcm/GCMRegistrar;->a(Landroid/content/Context;I)V

    goto/16 :goto_51

    .line 336
    :cond_f3
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v1, "Not retrying failed operation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_51

    .line 340
    :cond_fe
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_51
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    if-nez v0, :cond_d

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sender id not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_d
    iget-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    return-object v0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .registers 3

    .prologue
    .line 146
    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 196
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->d(Landroid/content/Context;)V

    .line 197
    invoke-direct {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_90

    .line 248
    :cond_17
    :goto_17
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_1a
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_134

    .line 251
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Releasing wakelock"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :goto_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_13f

    .line 259
    :goto_2d
    return-void

    .line 198
    :cond_2e
    :try_start_2e
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 200
    const-string/jumbo v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_c4

    .line 203
    const-string/jumbo v2, "deleted_messages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 204
    const-string/jumbo v1, "total_deleted"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4f
    .catchall {:try_start_2e .. :try_end_4f} :catchall_90

    move-result-object v1

    .line 206
    if-eqz v1, :cond_17

    .line 208
    :try_start_52
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 209
    const-string/jumbo v3, "GCMBaseIntentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received deleted messages notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gcm/GCMBaseIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_73} :catch_74
    .catchall {:try_start_52 .. :try_end_73} :catchall_90

    goto :goto_17

    .line 212
    :catch_74
    move-exception v0

    .line 213
    :try_start_75
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GCM returned invalid number of deleted messages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_90

    goto :goto_17

    .line 248
    :catchall_90
    move-exception v0

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_94
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_142

    .line 251
    const-string/jumbo v2, "GCMBaseIntentService"

    const-string/jumbo v3, "Releasing wakelock"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :goto_a6
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_94 .. :try_end_a7} :catchall_14d

    throw v0

    .line 219
    :cond_a8
    :try_start_a8
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received unknown special message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 223
    :cond_c4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_17

    .line 225
    :cond_c9
    const-string/jumbo v2, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 226
    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v2, Lcom/google/android/gcm/GCMBaseIntentService;->TOKEN:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    .line 230
    const-string/jumbo v0, "GCMBaseIntentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received invalid token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_a8 .. :try_end_fb} :catchall_90

    .line 248
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_fe
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_116

    .line 251
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Releasing wakelock"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 257
    :goto_110
    monitor-exit v1

    goto/16 :goto_2d

    :catchall_113
    move-exception v0

    monitor-exit v1
    :try_end_115
    .catchall {:try_start_fe .. :try_end_115} :catchall_113

    throw v0

    .line 255
    :cond_116
    :try_start_116
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Wakelock reference is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_116 .. :try_end_11f} :catchall_113

    goto :goto_110

    .line 234
    :cond_120
    :try_start_120
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 235
    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->c(Landroid/content/Context;)V

    goto/16 :goto_17

    .line 237
    :cond_12b
    invoke-virtual {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->getSenderIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Lcom/google/android/gcm/GCMRegistrar;->b(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_132
    .catchall {:try_start_120 .. :try_end_132} :catchall_90

    goto/16 :goto_17

    .line 255
    :cond_134
    :try_start_134
    const-string/jumbo v0, "GCMBaseIntentService"

    const-string/jumbo v2, "Wakelock reference is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 257
    :catchall_13f
    move-exception v0

    monitor-exit v1
    :try_end_141
    .catchall {:try_start_134 .. :try_end_141} :catchall_13f

    throw v0

    .line 255
    :cond_142
    :try_start_142
    const-string/jumbo v2, "GCMBaseIntentService"

    const-string/jumbo v3, "Wakelock reference is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    .line 257
    :catchall_14d
    move-exception v0

    monitor-exit v1
    :try_end_14f
    .catchall {:try_start_142 .. :try_end_14f} :catchall_14d

    throw v0
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method
