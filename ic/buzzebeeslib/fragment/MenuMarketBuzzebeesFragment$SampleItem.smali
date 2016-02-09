.class Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;
.super Ljava/lang/Object;
.source "MenuMarketBuzzebeesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleItem"
.end annotation


# instance fields
.field public tag:I

.field final synthetic this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;I)V
    .registers 3
    .param p2, "tag"    # I

    .prologue
    .line 108
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;->this$0:Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p2, p0, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment$SampleItem;->tag:I

    .line 110
    return-void
.end method
