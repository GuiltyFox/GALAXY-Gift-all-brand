.class public Lcom/bzbs/lib/survey/bean/Campaign;
.super Ljava/lang/Object;
.source "Campaign.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:J

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Ljava/lang/String;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Z

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field public V:Z

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:I

.field public a:Ljava/lang/String;

.field public aa:I

.field public ab:J

.field public ac:J

.field public ad:Ljava/lang/String;

.field public ae:Z

.field public af:J

.field public ag:Z

.field public ah:Z

.field public ai:Z

.field public aj:Ljava/lang/String;

.field public ak:Ljava/lang/String;

.field public al:Z

.field public am:J

.field public an:J

.field public ao:Ljava/math/BigDecimal;

.field public ap:Ljava/math/BigDecimal;

.field public aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

.field public ar:Ljava/lang/String;

.field public as:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bzbs/lib/survey/bean/CampaignGallery;",
            ">;"
        }
    .end annotation
.end field

.field public at:Ljava/lang/String;

.field public au:Ljava/lang/String;

.field public av:Ljava/lang/String;

.field public aw:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->R:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->S:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->T:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->V:Z

    .line 71
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->W:I

    .line 77
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Z:I

    .line 78
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aa:I

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ak:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ao:Ljava/math/BigDecimal;

    .line 94
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ap:Ljava/math/BigDecimal;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->as:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->at:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->au:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->av:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->R:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->S:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->T:Ljava/lang/String;

    .line 70
    iput-boolean v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->V:Z

    .line 71
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->W:I

    .line 77
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Z:I

    .line 78
    iput v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aa:I

    .line 88
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ak:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ao:Ljava/math/BigDecimal;

    .line 94
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ap:Ljava/math/BigDecimal;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 97
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ar:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->as:Ljava/util/ArrayList;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->at:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->au:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->av:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "AgencyName"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->a:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "ID"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->b:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "AgencyID"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 162
    :cond_7b
    const-string/jumbo v0, "AgencyId"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    .line 165
    :cond_84
    const-string/jumbo v0, "Name"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->d:Ljava/lang/String;

    .line 166
    const-string/jumbo v0, "Detail"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->e:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "Condition"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->f:Ljava/lang/String;

    .line 168
    const-string/jumbo v0, "ReferenceCode"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->g:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "CategoryID"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->h:Ljava/lang/String;

    .line 170
    const-string/jumbo v0, "CategoryName"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->i:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, "StartDate"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->j:Ljava/lang/String;

    .line 172
    const-string/jumbo v0, "ExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->k:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "Location"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->l:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, "Website"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->m:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "Discount"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->n:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, "OriginalPrice"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->o:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "PricePerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->p:Ljava/lang/String;

    .line 178
    const-string/jumbo v0, "PointPerUnit"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->q:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, "Quantity"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->r:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "NextRedeemDate"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->H:J

    .line 182
    const-string/jumbo v0, "RedeemMostPerPerson"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->s:I

    .line 183
    const-string/jumbo v0, "PeopleLike"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->t:I

    .line 184
    const-string/jumbo v0, "PeopleDislike"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->u:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, "ItemCountSold"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->v:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "Under18"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->w:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "Delivered"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->x:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, "StatusID"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->y:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, "TermsAndConditions"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->z:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "CreateDate"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->A:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "CreateBy"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->B:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "ModifyDate"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->C:Ljava/lang/String;

    .line 193
    const-string/jumbo v0, "ModifyBy"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->D:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "Buzz"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->E:I

    .line 195
    const-string/jumbo v0, "Score"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->F:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "Type"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->G:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "AgencyAddress"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->I:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "AgencyCity"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->J:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "AgencyCountry"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->K:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "AgencyZipCode"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->L:Ljava/lang/String;

    .line 201
    const-string/jumbo v0, "AgencyTel"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->M:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "AgencyWebsite"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->N:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "DayRemain"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->O:Ljava/lang/String;

    .line 205
    const-string/jumbo v0, "TracesJson"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->P:Ljava/lang/String;

    .line 206
    const-string/jumbo v0, "IsConditionPass"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Q:Z

    .line 208
    const-string/jumbo v0, "DayProceed"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->X:I

    .line 210
    const-string/jumbo v0, "FanPageId"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->U:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "tavatchai"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FanPageId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/bean/Campaign;->U:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "AgencyID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bzbs/lib/survey/bean/Campaign;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v0, "IsLike"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Y:Z

    .line 215
    const-string/jumbo v0, "UseCount"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->Z:I

    .line 216
    const-string/jumbo v0, "RedeemCount"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aa:I

    .line 217
    const-string/jumbo v0, "VoucherExpireDate"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ab:J

    .line 219
    const-string/jumbo v0, "Qty"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ac:J

    .line 221
    const-string/jumbo v0, "ConditionAlert"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ad:Ljava/lang/String;

    .line 222
    const-string/jumbo v0, "IsUsed"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ae:Z

    .line 223
    const-string/jumbo v0, "ExpireIn"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->af:J

    .line 224
    const-string/jumbo v0, "IsSpecificPrintVoucher"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ag:Z

    .line 225
    const-string/jumbo v0, "IsWinner"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ah:Z

    .line 226
    const-string/jumbo v0, "HasWinner"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ai:Z

    .line 228
    const-string/jumbo v0, "FullImageUrl"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->av:Ljava/lang/String;

    .line 229
    const-string/jumbo v0, "CustomInput"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aj:Ljava/lang/String;

    .line 230
    const-string/jumbo v0, "CustomCaption"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ak:Ljava/lang/String;

    .line 232
    const-string/jumbo v0, "IsRequirePoints"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->al:Z

    .line 233
    const-string/jumbo v0, "UserRequirePoints"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->am:J

    .line 234
    const-string/jumbo v0, "UserPackagePoints"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bzbs/lib/survey/bean/Campaign;->an:J

    .line 235
    const-string/jumbo v0, "UserPackagePrices"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ao:Ljava/math/BigDecimal;

    .line 236
    const-string/jumbo v0, "UserSummaryPrices"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->ap:Ljava/math/BigDecimal;

    .line 238
    const-string/jumbo v0, "Extra"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    if-eqz v0, :cond_314

    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_314

    .line 241
    :try_start_306
    new-instance v0, Lcom/bzbs/lib/survey/bean/CampaignExtra;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aw:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/bzbs/lib/survey/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;
    :try_end_314
    .catch Lorg/json/JSONException; {:try_start_306 .. :try_end_314} :catch_33a

    .line 248
    :cond_314
    :goto_314
    :try_start_314
    const-string/jumbo v0, "Pictures"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->as:Ljava/util/ArrayList;

    move v0, v1

    .line 251
    :goto_323
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_379

    .line 252
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 253
    iget-object v4, p0, Lcom/bzbs/lib/survey/bean/Campaign;->as:Ljava/util/ArrayList;

    new-instance v5, Lcom/bzbs/lib/survey/bean/CampaignGallery;

    invoke-direct {v5, v3}, Lcom/bzbs/lib/survey/bean/CampaignGallery;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_337
    .catch Lorg/json/JSONException; {:try_start_314 .. :try_end_337} :catch_35a

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_323

    .line 242
    :catch_33a
    move-exception v0

    .line 243
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException|Extra):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_314

    .line 255
    :catch_35a
    move-exception v0

    .line 256
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException|Badge):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_379
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->P:Ljava/lang/String;

    if-eqz v0, :cond_3c4

    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->P:Ljava/lang/String;

    const-string/jumbo v2, "<null>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c4

    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->P:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c4

    .line 261
    :try_start_393
    new-instance v2, Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->P:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 262
    :goto_39b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3c4

    .line 263
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 265
    const-string/jumbo v3, "TracePlanId"

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Campaign;->R:Ljava/lang/String;

    .line 266
    const-string/jumbo v3, "Value"

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bzbs/lib/survey/bean/Campaign;->S:Ljava/lang/String;

    .line 267
    const-string/jumbo v3, "Caption"

    invoke-static {v1, v3}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->T:Ljava/lang/String;
    :try_end_3c0
    .catch Lorg/json/JSONException; {:try_start_393 .. :try_end_3c0} :catch_3c3

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_39b

    .line 269
    :catch_3c3
    move-exception v0

    .line 276
    :cond_3c4
    const-string/jumbo v0, "InterfaceDisplay"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->at:Ljava/lang/String;

    .line 277
    const-string/jumbo v0, "PointType"

    invoke-static {p1, v0}, Lcom/bzbs/lib/survey/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->au:Ljava/lang/String;

    .line 278
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/bzbs/lib/survey/bean/CampaignExtra;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p1, :cond_1a

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 145
    :try_start_c
    new-instance v1, Lcom/bzbs/lib/survey/bean/CampaignExtra;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bzbs/lib/survey/bean/CampaignExtra;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;

    .line 146
    iget-object v0, p0, Lcom/bzbs/lib/survey/bean/Campaign;->aq:Lcom/bzbs/lib/survey/bean/CampaignExtra;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1a} :catch_1b

    .line 152
    :cond_1a
    :goto_1a
    return-object v0

    .line 147
    :catch_1b
    move-exception v1

    .line 148
    const-string/jumbo v2, "MyLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(JSONException|Extra):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bzbs/lib/survey/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 135
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
