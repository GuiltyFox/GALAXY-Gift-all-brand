.class Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;
.super Ljava/lang/Object;
.source "AddMoneyCreditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    const v2, 0x7f1000c9

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    if-eqz v0, :cond_a6

    .line 126
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    move v3, v1

    .line 128
    :goto_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a6

    .line 129
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/Campaign;

    .line 131
    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v2, v5}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 132
    const v5, 0x7f04001c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 134
    new-instance v2, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "#,###,###"

    invoke-direct {v2, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;

    iget-object v6, v6, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    const v7, 0x7f090373

    invoke-virtual {v6, v7}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    const v2, 0x7f1000cd

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v2, 0x7f1000cc

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;

    invoke-direct {v6, p0, v5, v1}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;Landroid/view/View;Lcom/bzbs/bean/Campaign;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_91} :catch_a5

    .line 148
    :try_start_91
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_a0

    .line 149
    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;

    iget-object v2, v2, Lcom/samsung/privilege/activity/AddMoneyCreditActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCreditActivity;

    invoke-static {v2, v5, v1}, Lcom/samsung/privilege/activity/AddMoneyCreditActivity;->a(Lcom/samsung/privilege/activity/AddMoneyCreditActivity;Landroid/view/View;Lcom/bzbs/bean/Campaign;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a0} :catch_a7

    .line 128
    :cond_a0
    :goto_a0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1c

    .line 156
    :catch_a5
    move-exception v0

    .line 160
    :cond_a6
    return-void

    .line 151
    :catch_a7
    move-exception v1

    goto :goto_a0
.end method
