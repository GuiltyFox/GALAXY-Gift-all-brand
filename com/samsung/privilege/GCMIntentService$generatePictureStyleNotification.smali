.class public Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;
.super Landroid/os/AsyncTask;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/GCMIntentService;

.field private imageUrl:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private messageGCM:Lcom/bzbs/bean/MessageGCM;

.field private pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/GCMIntentService;Landroid/content/Context;Ljava/lang/String;Lcom/bzbs/bean/MessageGCM;Landroid/app/PendingIntent;)V
    .registers 6

    .prologue
    .line 642
    iput-object p1, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->a:Lcom/samsung/privilege/GCMIntentService;

    .line 643
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->mContext:Landroid/content/Context;

    .line 645
    iput-object p3, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->imageUrl:Ljava/lang/String;

    .line 646
    iput-object p4, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->messageGCM:Lcom/bzbs/bean/MessageGCM;

    .line 647
    iput-object p5, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->pendingIntent:Landroid/app/PendingIntent;

    .line 648
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 654
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->imageUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 656
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 657
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 658
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 659
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_1b} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_23

    move-result-object v0

    .line 666
    :goto_1c
    return-object v0

    .line 661
    :catch_1d
    move-exception v0

    .line 662
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 666
    :goto_21
    const/4 v0, 0x0

    goto :goto_1c

    .line 663
    :catch_23
    move-exception v0

    .line 664
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 635
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 672
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 674
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->a:Lcom/samsung/privilege/GCMIntentService;

    invoke-virtual {v0}, Lcom/samsung/privilege/GCMIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f040114

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 675
    const v0, 0x7f10034c

    const-string/jumbo v2, "Galaxy Gift"

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 676
    const v0, 0x7f10034d

    iget-object v2, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v2, v2, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 677
    const v0, 0x7f100349

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 678
    const v0, 0x7f1000cf

    const v2, 0x7f020196

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 680
    iget-object v0, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 681
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->a:Lcom/samsung/privilege/GCMIntentService;

    invoke-virtual {v3}, Lcom/samsung/privilege/GCMIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f030000

    .line 682
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->a(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->messageGCM:Lcom/bzbs/bean/MessageGCM;

    iget-object v3, v3, Lcom/bzbs/bean/MessageGCM;->alert:Ljava/lang/String;

    .line 683
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 684
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 685
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->pendingIntent:Landroid/app/PendingIntent;

    .line 686
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->a()Landroid/app/Notification;

    move-result-object v1

    .line 689
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 690
    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 691
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 635
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/GCMIntentService$generatePictureStyleNotification;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
