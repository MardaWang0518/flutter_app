data class Issue(
    val count: Int,
    val date: Long,
    val itemList: List<Item>,
    val publishTime: Long,
    val releaseTime: Long,
    val type: String
)