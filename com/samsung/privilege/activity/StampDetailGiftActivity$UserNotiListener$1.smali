.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1210
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "stamp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1214
    invoke-static {}, Lcom/samsung/privilege/util/DialogSerialGift;->a()V

    .line 1215
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener$1;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserNotiListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->a(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    .line 1217
    :cond_15
    return-void
.end method
