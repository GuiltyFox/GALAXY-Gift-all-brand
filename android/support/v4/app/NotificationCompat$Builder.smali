.class public Landroid/support/v4/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field A:I

.field B:Landroid/app/Notification;

.field C:Landroid/widget/RemoteViews;

.field D:Landroid/widget/RemoteViews;

.field E:Landroid/widget/RemoteViews;

.field public F:Landroid/app/Notification;

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/app/NotificationCompat$Style;

.field public n:Ljava/lang/CharSequence;

.field public o:[Ljava/lang/CharSequence;

.field p:I

.field q:I

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/String;

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field w:Z

.field x:Ljava/lang/String;

.field y:Landroid/os/Bundle;

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->k:Z

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->v:Ljava/util/ArrayList;

    .line 1036
    iput-boolean v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->w:Z

    .line 1039
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->z:I

    .line 1040
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->A:I

    .line 1047
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    .line 1063
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 1066
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1068
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->j:I

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->G:Ljava/util/ArrayList;

    .line 1070
    return-void
.end method

.method private a(IZ)V
    .registers 6

    .prologue
    .line 1437
    if-eqz p2, :cond_a

    .line 1438
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1442
    :goto_9
    return-void

    .line 1440
    :cond_a
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_9
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .prologue
    const/16 v1, 0x1400

    .line 1756
    if-nez p0, :cond_5

    .line 1760
    :cond_4
    :goto_4
    return-object p0

    .line 1757
    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 1758
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_4
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .registers 3

    .prologue
    .line 1744
    sget-object v0, Landroid/support/v4/app/NotificationCompat;->a:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->b()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->a(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1115
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 1078
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2

    .prologue
    .line 1229
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->d:Landroid/app/PendingIntent;

    .line 1230
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2

    .prologue
    .line 1293
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->g:Landroid/graphics/Bitmap;

    .line 1294
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1307
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1308
    return-object p0
.end method

.method public a(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3

    .prologue
    .line 1639
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_f

    .line 1640
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    .line 1641
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    if-eqz v0, :cond_f

    .line 1642
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->m:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1645
    :cond_f
    return-object p0
.end method

.method public a(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2

    .prologue
    .line 1705
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->D:Landroid/widget/RemoteViews;

    .line 1706
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3

    .prologue
    .line 1138
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->b:Ljava/lang/CharSequence;

    .line 1139
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3

    .prologue
    .line 1391
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(IZ)V

    .line 1392
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 3

    .prologue
    .line 1146
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->c:Ljava/lang/CharSequence;

    .line 1147
    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 2

    .prologue
    .line 1402
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->w:Z

    .line 1403
    return-object p0
.end method

.method protected b()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .registers 2

    .prologue
    .line 1752
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V

    return-object v0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    .registers 4

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1275
    return-object p0
.end method

.method protected c()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1825
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected d()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1835
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
