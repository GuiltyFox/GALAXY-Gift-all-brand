.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampListener;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Lcom/bzbs/event/StampEvents$StampListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;Lcom/samsung/privilege/activity/StampDetailGiftActivity$1;)V
    .registers 3

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampListener;-><init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$StampListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->g(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1202
    return-void
.end method
