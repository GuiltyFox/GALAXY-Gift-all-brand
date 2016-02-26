.class Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$1;
.super Ljava/lang/Object;
.source "MarketPlaceList3Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->onCreateView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity$1;->this$0:Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/MarketPlaceList3Activity;->finish()V

    .line 245
    return-void
.end method
