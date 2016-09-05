.class public Lcom/bzbs/bean/DashboardRow;
.super Ljava/lang/Object;
.source "DashboardRow.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public RowTag:Ljava/lang/String;

.field public dashboardItemA:Lcom/bzbs/bean/DashboardItem;

.field public dashboardItemB:Lcom/bzbs/bean/DashboardItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/bzbs/bean/DashboardRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/bean/DashboardRow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bzbs/bean/DashboardItem;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemB:Lcom/bzbs/bean/DashboardItem;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V
    .registers 4

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/bean/DashboardRow;->RowTag:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    .line 43
    iput-object p2, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemB:Lcom/bzbs/bean/DashboardItem;

    .line 44
    return-void
.end method

.method public static GetArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    const/4 v0, 0x0

    move v2, v0

    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_18e

    .line 146
    :try_start_d
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 150
    if-nez v2, :cond_15

    .line 161
    :cond_15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_1d

    .line 163
    :cond_1d
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "hashtag"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 144
    :goto_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 165
    :cond_2c
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "cat_header"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 167
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_40

    goto :goto_28

    .line 225
    :catch_40
    move-exception v0

    .line 226
    sget-object v1, Lcom/bzbs/bean/DashboardRow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while initial(DashboardRow):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 168
    :cond_5f
    :try_start_5f
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v4, "webview"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 170
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 172
    :cond_73
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "small"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 173
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v4, v2, 0x1

    if-le v1, v4, :cond_104

    .line 174
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/DashboardItem;

    .line 175
    iget-object v4, v1, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "small"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e3

    iget-object v4, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "cat_header"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e3

    iget-object v4, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "webview"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e3

    iget-object v4, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "hashtag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e3

    .line 176
    add-int/lit8 v2, v2, 0x1

    .line 177
    iget-object v4, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v5, "premium"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 179
    new-instance v4, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v4, v0, v1}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 182
    :cond_d9
    new-instance v4, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v4, v0, v1}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 185
    :cond_e3
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v4, "premium"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f9

    .line 188
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 191
    :cond_f9
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 195
    :cond_104
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 197
    :cond_10f
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "medium"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_156

    .line 198
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "campaign_rotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 200
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 202
    :cond_137
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v4, "premium"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    .line 204
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 207
    :cond_14c
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 211
    :cond_156
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "campaign_rotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 213
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 215
    :cond_16f
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v4, "premium"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 217
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 220
    :cond_184
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_18c} :catch_40

    goto/16 :goto_28

    .line 229
    :cond_18e
    return-object v3
.end method

.method public static GetArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/bean/DashboardRow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 49
    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3b

    .line 51
    :try_start_d
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 52
    new-instance v4, Lcom/bzbs/bean/DashboardItem;

    invoke-direct {v4, v2}, Lcom/bzbs/bean/DashboardItem;-><init>(Lorg/json/JSONObject;)V

    .line 53
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1c

    .line 49
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 54
    :catch_1c
    move-exception v2

    .line 55
    sget-object v4, Lcom/bzbs/bean/DashboardRow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while initial(DashboardItem):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 59
    :cond_3b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 60
    :goto_41
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1a9

    .line 62
    :try_start_47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/DashboardItem;

    .line 66
    if-nez v2, :cond_4f

    .line 77
    :cond_4f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_57

    .line 79
    :cond_57
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "cat_header"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 81
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_6a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_41

    .line 82
    :cond_6e
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v5, "webview"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 84
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_81} :catch_82

    goto :goto_6a

    .line 135
    :catch_82
    move-exception v0

    .line 136
    sget-object v1, Lcom/bzbs/bean/DashboardRow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while initial(DashboardRow):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 86
    :cond_a1
    :try_start_a1
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "small"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 87
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bzbs/bean/DashboardItem;

    .line 88
    iget-object v5, v1, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "small"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_109

    iget-object v5, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v6, "cat_header"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_109

    iget-object v5, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v6, "webview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_109

    iget-object v5, v1, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    const-string/jumbo v6, "hashtag"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_109

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    iget-object v5, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v6, "premium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 92
    new-instance v5, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v5, v0, v1}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 95
    :cond_ff
    new-instance v5, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v5, v0, v1}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 98
    :cond_109
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v5, "premium"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 101
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 104
    :cond_11f
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 107
    :cond_12a
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "medium"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    .line 108
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "campaign_rotate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 110
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 112
    :cond_152
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v5, "premium"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_167

    .line 114
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 117
    :cond_167
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 121
    :cond_171
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "campaign_rotate"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18a

    .line 123
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 125
    :cond_18a
    iget-object v1, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    const-string/jumbo v5, "premium"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19f

    .line 127
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6a

    .line 130
    :cond_19f
    new-instance v1, Lcom/bzbs/bean/DashboardRow;

    invoke-direct {v1, v0}, Lcom/bzbs/bean/DashboardRow;-><init>(Lcom/bzbs/bean/DashboardItem;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_1a7} :catch_82

    goto/16 :goto_6a

    .line 139
    :cond_1a9
    return-object v4
.end method


# virtual methods
.method public getLayout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->dashboard_layout:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bzbs/bean/DashboardRow;->dashboardItemA:Lcom/bzbs/bean/DashboardItem;

    iget-object v0, v0, Lcom/bzbs/bean/DashboardItem;->type:Ljava/lang/String;

    return-object v0
.end method
