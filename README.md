
Getting and Cleaning data : week 4 project

Data was taken from the project : "Human Activity Recognition Using Smartphones Dataset", with the source as described in CodeBook.md.

The objective of the data transformations peformed were to produce a tidy dataset, which summarized certain of the values in the original data, laid out by subject and activity type.

To achieve this the following steps were taken.

1.  Data was read from the test and training sets, and activity types and subject numbers were added for each observation.  The test and training sets were then merged.
2. A subset of the data was then taken : only those measurements which related to mean of standard deviation values were retained.
3. The data columns for the measurement types, were renamed using the descriptions provided with the original data.
4. The data was reshaped into a tidier format - so that each row represented a single type of measurement, against subject and activity.
5. The data was then summarized so that a mean was given for each type of measurement across all the observations for a given subject and activity type.
