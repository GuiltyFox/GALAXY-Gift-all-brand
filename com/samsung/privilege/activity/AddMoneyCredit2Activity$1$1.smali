.class Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;
.super Ljava/lang/Object;
.source "AddMoneyCredit2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 183
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bzbs/bean/Campaign;->GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 184
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    :goto_18
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_7e

    move-result v4

    if-ge v0, v4, :cond_3f

    .line 189
    :try_start_1e
    new-instance v4, Lcom/bzbs/bean/Campaign;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bzbs/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 191
    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "#,###,###.##"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 192
    iget-object v4, v4, Lcom/bzbs/bean/Campaign;->PricePerUnit:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3c} :catch_80

    .line 187
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 199
    :cond_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5a

    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iget-object v2, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    invoke-static {v2, v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->a(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;Lcom/bzbs/bean/Campaign;)Lcom/bzbs/bean/Campaign;

    .line 201
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->b(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V

    .line 211
    :cond_5a
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    const v2, 0x7f1000d4

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/wheel/WheelView;

    .line 212
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/control/wheel/WheelView;->setOffset(I)V

    .line 213
    invoke-virtual {v0, v3}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Ljava/util/List;)V

    .line 214
    new-instance v2, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1$1;-><init>(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/control/wheel/WheelView;->a(Lcom/samsung/privilege/control/wheel/WheelView$OnWheelViewListener;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1$1;->b:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;

    iget-object v0, v0, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity$1;->a:Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;->c(Lcom/samsung/privilege/activity/AddMoneyCredit2Activity;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7d} :catch_7e

    .line 240
    :goto_7d
    return-void

    .line 236
    :catch_7e
    move-exception v0

    goto :goto_7d

    .line 194
    :catch_80
    move-exception v4

    goto :goto_3c
.end method
