.class Lcom/slidingmenu/lib/CustomViewAbove$2;
.super Lcom/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;
.source "CustomViewAbove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/slidingmenu/lib/CustomViewAbove;->initCustomViewAbove()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/slidingmenu/lib/CustomViewAbove;


# direct methods
.method constructor <init>(Lcom/slidingmenu/lib/CustomViewAbove;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    .line 170
    invoke-direct {p0}, Lcom/slidingmenu/lib/CustomViewAbove$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    # getter for: Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;
    invoke-static {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 173
    packed-switch p1, :pswitch_data_22

    .line 183
    :cond_b
    :goto_b
    return-void

    .line 176
    :pswitch_c
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    # getter for: Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;
    invoke-static {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_b

    .line 179
    :pswitch_17
    iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewAbove$2;->this$0:Lcom/slidingmenu/lib/CustomViewAbove;

    # getter for: Lcom/slidingmenu/lib/CustomViewAbove;->mViewBehind:Lcom/slidingmenu/lib/CustomViewBehind;
    invoke-static {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->access$0(Lcom/slidingmenu/lib/CustomViewAbove;)Lcom/slidingmenu/lib/CustomViewBehind;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setChildrenEnabled(Z)V

    goto :goto_b

    .line 173
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method
