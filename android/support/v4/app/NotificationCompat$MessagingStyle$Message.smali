.class public final Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:J

.field private final c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;


# direct methods
.method static a(Ljava/util/List;)[Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 2303
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/os/Bundle;

    .line 2304
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2305
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1e

    .line 2306
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->f()Landroid/os/Bundle;

    move-result-object v0

    aput-object v0, v2, v1

    .line 2305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 2308
    :cond_1e
    return-object v2
.end method

.method private f()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 2285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2286
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    .line 2287
    const-string/jumbo v1, "text"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2289
    :cond_11
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2290
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_25

    .line 2291
    const-string/jumbo v1, "sender"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2293
    :cond_25
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->d:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 2294
    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    :cond_31
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->e:Landroid/net/Uri;

    if-eqz v1, :cond_3d

    .line 2297
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2299
    :cond_3d
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2252
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 2259
    iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->b:J

    return-wide v0
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 2266
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2273
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2281
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->e:Landroid/net/Uri;

    return-object v0
.end method
